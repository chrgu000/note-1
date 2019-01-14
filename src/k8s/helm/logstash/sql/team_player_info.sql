SELECT
    fi.player_id,
    fi.player_name,
    a.player_num,
    fi.team_id,
    fi.team_name
FROM
    fabx_team_player_info fi
LEFT JOIN (
    SELECT
        player_id,
        player_num
    FROM
        match_team_players
    GROUP BY
        player_id,
        player_num
) a ON fi.player_id = a.player_id
WHERE fi.player_id is not null
GROUP BY fi.player_id