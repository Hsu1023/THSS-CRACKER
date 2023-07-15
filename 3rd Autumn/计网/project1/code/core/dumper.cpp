/* -*- Mode:C++; c-file-style:"gnu"; indent-tabs-mode:nil; -*- */
/**
 * This program is free software: you can redistribute it and/or modify it under the terms of
 * the GNU General Public License as published by the Free Software Foundation, either version
 * 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with this program.
 * If not, see <http://www.gnu.org/licenses/>.
 */

#include "dumper.hpp"

#define TCPDUMP_MAGIC 0xa1b2c3d4
#define PCAP_VERSION_MAJOR 2
#define PCAP_VERSION_MINOR 4

#define LINKTYPE_ETHERNET 1

namespace simple_router {

static void
sf_write_header(FILE *fp, int linktype, int thiszone, int snaplen)
{
  struct pcap_file_header hdr;

  hdr.magic = TCPDUMP_MAGIC;
  hdr.version_major = PCAP_VERSION_MAJOR;
  hdr.version_minor = PCAP_VERSION_MINOR;

  hdr.thiszone = thiszone;
  hdr.snaplen = snaplen;
  hdr.sigfigs = 0;
  hdr.linktype = linktype;

  if (fwrite((char *)&hdr, sizeof(hdr), 1, fp) != 1)
    fprintf(stderr, "sf_write_header: can't write header\n");
}

/*
 * Initialize so that sf_write_header() will output to the file named 'fname'.
 */
FILE *
sr_dump_open(const char *fname, int thiszone, int snaplen)
{
  FILE *fp;

  if (fname[0] == '-' && fname[1] == '\0')
    fp = stdout;
  else {
    fp = fopen(fname, "w");
    if (fp == NULL) {
      fprintf(stderr, "sr_dump_open: can't open %s",
              fname);
      return (NULL);
    }
  }

  sf_write_header(fp, LINKTYPE_ETHERNET, thiszone, snaplen);

  return fp;
}

/*
 * Output a packet to the initialized dump file.
 */
void
sr_dump(FILE *fp, const struct pcap_pkthdr *h, const unsigned char *sp)
{
  struct pcap_sf_pkthdr sf_hdr;

  sf_hdr.ts.tv_sec  = h->ts.tv_sec;
  sf_hdr.ts.tv_usec = h->ts.tv_usec;
  sf_hdr.caplen     = h->caplen;
  sf_hdr.len        = h->len;
  /* XXX we should check the return status */
  (void)fwrite(&sf_hdr, sizeof(sf_hdr), 1, fp);
  (void)fwrite((char *)sp, h->caplen, 1, fp);
}

void
sr_dump_close(FILE *fp)
{
  fclose(fp);
}

} // namespace simple_router
