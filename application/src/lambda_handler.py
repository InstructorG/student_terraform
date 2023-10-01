from typing import Tuple


def lambda_handler(event, context):
    print("Événement en entrée : {}".format(event))

    first_element, second_element = extract(event)

    result = multiply(first_element, second_element)

    print("Résultat de la méthode : {}".format(result))

    return {
        "statusCode": 200,
        "body": "Traitement de l'événement terminé avec succès.",
        "result": result,
    }


def extract(event) -> Tuple:
    return event["first"], event["second"]


def multiply(first_element, second_element) -> int:
    try:
        return int(first_element) * int(second_element)
    except Exception as e:
        print("EXCEPTION WHEN MULTIPLY")
