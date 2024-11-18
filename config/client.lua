return {
    acceptDispatchKey = 'Y',
    denyDispatchKey = 'N',
    useMPH = true, -- Use MPH instead of KMH
    onlyOnDuty = false, -- Only display calls when on duty
    allowAnonText = false, -- Requires useNpwd = true, Allow anonymous Texts to 911/912 (start the text with: "anon [...]")

    -- These need to be tested and might spam the dispatch
    events = {
        fight = {
            enabled = true,
            jobwhitelist = {
                'police',
                'sheriff',
            },
        },
        shotsfired = {
            enabled = true,
            jobwhitelist = {
                'sheriff',
            },
        },
        weaponthreat = {
            enabled = true,
            jobwhitelist = {
                'sheriff',
            },
        },
    }
}