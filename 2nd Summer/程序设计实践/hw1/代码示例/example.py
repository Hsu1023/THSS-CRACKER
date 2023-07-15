from util import fetch_data, ResponseData

if __name__ == '__main__':
    input_file_path = 'data.csv'
    TOTAL_VALID_COUNT = 556  # specific to file

    response_data = fetch_data("miao")
    assert response_data.data_list == []
    assert response_data.total == 0
    # normal case
    response_data = fetch_data(input_file_path)
    assert isinstance(response_data, ResponseData)
    assert response_data.total == TOTAL_VALID_COUNT
    assert len(response_data.data_list) == TOTAL_VALID_COUNT

    # paginate
    response_data = fetch_data(input_file_path, page=1, page_size=15)
    assert isinstance(response_data, ResponseData)
    assert response_data.total == TOTAL_VALID_COUNT
    assert len(response_data.data_list) == 15

    # sort case
    response_data = fetch_data(input_file_path, sort_key="Goals scored", sort_order='esc')
    assert isinstance(response_data, ResponseData)
    assert response_data.total == TOTAL_VALID_COUNT
    assert len(response_data.data_list) == TOTAL_VALID_COUNT
    assert response_data.data_list[0] is not None
    assert response_data.data_list[0]['Name'] == 'Messi'
    assert response_data.data_list[0]['Goals scored'] == -27

    response_data = fetch_data(input_file_path, sort_key="Offsides", sort_order='desc')
    assert isinstance(response_data, ResponseData)
    assert response_data.total == TOTAL_VALID_COUNT
    assert len(response_data.data_list) == TOTAL_VALID_COUNT
    assert response_data.data_list[0] is not None
    assert response_data.data_list[0]['Name'] == 'Borja Iglesias'

    # filter case
    filter_dict = {
        'Team': 'Barcelona'
    }
    response_data = fetch_data(input_file_path, filter_dict=filter_dict)
    assert isinstance(response_data, ResponseData)
    assert response_data.total == 26
    assert len(response_data.data_list) == 26
    team_name_list = [item['Team'] for item in response_data.data_list]
    assert len(set(team_name_list)) == 1
    assert 'FC Barcelona' in team_name_list

    filter_dict = {
        'Team': 'Madrid'
    }
    response_data = fetch_data(input_file_path, filter_dict=filter_dict)
    assert isinstance(response_data, ResponseData)
    assert response_data.total == 63
    assert len(response_data.data_list) == 63
    team_name_list = [item['Team'] for item in response_data.data_list]
    assert len(set(team_name_list)) == 2
    assert 'Atlético de Madrid' in team_name_list
    assert 'Real Madrid' in team_name_list
print("finish")