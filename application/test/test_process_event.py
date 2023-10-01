from application.src.lambda_handler import extract, multiply


class TestLambdaHandler:
    def test_when_get_event_should_extract_event(self):
        # Given
        event = {
            "first": 2,
            "second": 2,
        }

        # When
        first, second = extract(event)

        # Then
        assert first == 2
        assert second == 2

    def test_when_get_elements_should_multiply(self):
        # Given
        first_element = 3
        second_element = 10

        # When
        produit = multiply(first_element, second_element)

        # Then
        assert produit == 30
