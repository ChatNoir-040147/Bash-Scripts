#!/bin/bash

WebhookUrl="https://discord.com/api/webhooks/123456789"

function Send-DiscordWebhookMessage {
    local WebhookUrl="$1"
    local CharacterName="$2"
    local CharacterPhotoUrl="$3"
    local MessageContent="$4"

    local Payload='{
        "content": "",
        "username": "'"$CharacterName"'",
        "avatar_url": "'"$CharacterPhotoUrl"'",
        "embeds": [
            {
                "description": "'"$MessageContent"'",
                "color": 16751936
            }
        ]
    }'

    curl -X POST -H "Content-Type: application/json" -d "$Payload" "$WebhookUrl"
}

Send-DiscordWebhookMessage "$WebhookUrl" "Chat Noir" "https://zupimages.net/up/23/28/ohs7.jpg" "Ladybug ce soir alors que nous nous tenons ici en tant que héros de Paris je veux te confier quelque chose de profondément intime"

Send-DiscordWebhookMessage "$WebhookUrl" "Ladybug" "https://zupimages.net/up/23/28/fdwd.png" "Oh, Chat Noir, tu sembles tellement sérieux. Qu'est-ce qui te tracasse ?"

Send-DiscordWebhookMessage "$WebhookUrl" "Chat Noir" "https://zupimages.net/up/23/28/ohs7.jpg" "C'est vrai, ma Lady, je suis sérieux. Mais c'est parce que tu as allumé une flamme dans mon cœur, une flamme qui brûle avec une passion que je ne peux plus contenir."

Send-DiscordWebhookMessage "$WebhookUrl" "Ladybug" "https://zupimages.net/up/23/28/fdwd.png" "Chat Noir, je ne sais pas quoi dire..."

Send-DiscordWebhookMessage "$WebhookUrl" "Chat Noir" "https://zupimages.net/up/23/28/ohs7.jpg" "Tu n'as pas besoin de dire un mot, mon Amour. Je voulais juste que tu saches que mon cœur t'appartient. Chaque sourire, chaque regard, chaque combat partagé avec toi a fait naître des sentiments indéniables en moi. Tu es l'amour de ma vie."

Send-DiscordWebhookMessage "$WebhookUrl" "Ladybug" "https://zupimages.net/up/23/28/fdwd.png" "Chat Noir, tes mots m'ont touchée en plein cœur. Tu es bien plus qu'un partenaire pour moi, tu es mon roc, mon soutien. Et tu dois savoir que mes sentiments pour toi vont au-delà de l'amitié. Je t'aime aussi, Chat Noir."

Send-DiscordWebhookMessage "$WebhookUrl" "Chat Noir" "https://zupimages.net/up/23/28/ohs7.jpg" "Vraiment ?! Ladybug, tu ne peux pas imaginer à quel point tu viens de remplir mon cœur de joie ! Je suis tellement reconnaissant que tu partages mes sentiments."

Send-DiscordWebhookMessage "$WebhookUrl" "Ladybug" "https://zupimages.net/up/23/28/fdwd.png" "Nos masques nous unissent, mais c'est notre connexion profonde qui a fait naître ces sentiments. Je suis impatiente de voir où notre histoire d'amour de héros nous mènera, mon Chat Noir."

Send-DiscordWebhookMessage "$WebhookUrl" "Chat Noir" "https://zupimages.net/up/23/28/ohs7.jpg" "Moi aussi, ma Coccinelle. Ensemble, nous sommes invincibles, que ce soit dans notre lutte contre le mal ou dans notre amour. Rien ne pourra jamais nous séparer."

Send-DiscordWebhookMessage "$WebhookUrl" "Ladybug" "https://zupimages.net/up/23/28/fdwd.png" "Je suis d'accord, mon Chat Noir. Notre amour est aussi puissant que nos pouvoirs. Et je suis prête à affronter tous les défis qui se présentent à nous, main dans la main."
