namespace com.compmodel;

using {
    cuid,
    managed,
} from '@sap/cds/common';

// Threshold Master Table
entity ZHR_COMP_TBL_THRSHLD_MASTER : cuid, managed {
    key year               : Integer   @assert.range : [
            1000,
            9999
        ];
        performanceSubZone : String(10);
        payzones           : String(10);
        compaRatioRanges   : String(20);
        startRange         : String(3) @assert.format: '^[0-9]{1,3}$';
        endRange           : String(3) @assert.format: '^[0-9]{1,3}$';
        performanceRating  : String(20);
        sequence           : String(3) @assert.format: '^[0-9]{1,15}$';
        fieldUsage         : String(10);
}

// SubZone Master Table
entity ZHR_COMP_TBL_SUBZONE_MASTER : cuid, managed {
    performanceSubZone : String;
    sequence           : Integer;
    fieldUsage         : String;
}

// Comp Master Table
entity ZHR_COMP_TBL_COMPRATIO_MASTER : cuid, managed {
    key year               : Integer @assert.range: [
            1000,
            9999
        ];
        performanceSubZone : String;
        payzones           : String;
        compaRatioRanges   : String;
        startRange         : Integer;
        endRange           : Integer;
        performanceRating  : String;
        thresholdFrom      : Integer;
        thresholdTo        : Integer;
}

// CRV Exception Master Table
entity ZHR_COMP_TBL_CRV_EXPTN_MASTER : cuid, managed {
    key field_id                 : String;
    key custPERNR                : Integer;
        executiveRuleViolation   : String(1);
        mgrFirstName             : String(60);
        mgrLastName              : String(60);
        userName                 : String;
        custHireDate             : Date;
        custBusUnit              : String;
        custDivision             : String;
        custDepartment           : String;
        jobTitle                 : String;
        custPayGradeLevel        : Integer;
        curSalary                : Decimal;
        custCurHrlySalary        : Decimal;
        payGuideMid              : Decimal;
        curRatio                 : Integer;
        custPerformanceZone      : String;
        custPDScore              : String;
        meritGuideline           : Decimal;
        merit                    : Decimal;
        merit_Percentage         : Integer;
        Comment_merit            : String;
        custExceptionCode        : String;
        lumpSum                  : Decimal;
        lumpSum_Percentage       : Integer;
        finSalary                : Decimal;
        compaRatio               : Integer;
        custMeritExcepReqAmt     : Decimal;
        custMeritExcepReqPct     : Integer;
        custfinSalaryExcepReq    : Decimal;
        custCompaRatioExcepReq   : Integer;
        custMeritExcepReqComment : String;
        salaryNote               : String;
}

// BU Div Master Table
entity ZHR_COMP_TBL_BUDIV_MASTER : cuid, managed {
    key year         : Integer @assert.range: [
            1000,
            9999
        ];
        custBusUnit  : String;
        custDivision : String;
        fieldUsage   : String;
}

// Target Tabs Master Table
entity ZHR_COMP_TBL_TARGETTAB_MASTER : cuid, managed {
    key year          : Integer @assert.range: [
            1000,
            9999
        ];
        TargetTabName : String;
        custBusUnit   : String;
        custDivision  : String;
        fieldUsage    : String;
}

// Update CRV Exception Master Table
entity ZHR_COMP_TBL_CRV_EXCEP_FINAL : cuid, managed {
    key field_id                 : String;
    key custPERNR                : Integer;
        executiveRuleViolation   : String;
        mgrFirstName             : String;
        mgrLastName              : String;
        username                 : String;
        custHireDate             : Date;
        custBusUnit              : String;
        custDivision             : String;
        custDepartment           : String;
        jobTitle                 : String;
        custPayGradeLevel        : Integer;
        curSalary                : Decimal;
        custCurHrlySalary        : Decimal;
        payGuideMid              : Decimal;
        curRatio                 : Decimal;
        custPerformanceZone      : Integer;
        custPDScore              : String;
        meritGuideline           : Decimal;
        merit                    : Decimal;
        merit_Percentage         : Decimal;
        commentformerit          : String;
        custExceptionCode        : String;
        lumpSum                  : Decimal;
        lumpSum_Percentage       : Decimal;
        finSalary                : Decimal;
        compaRatio               : Decimal;
        custMeritExcepReqAmt     : Decimal;
        custMeritExcepReqPct     : Decimal;
        custfinSalaryExcepReq    : Decimal;
        custCompaRatioExcepReq   : Decimal;
        custMeritExcepReqComment : String;
        salaryNote               : String;
        PerformanceSubZone       : String;
        TargetTabName            : String;
}

// STIP Exception Master Data
entity ZHR_COMP_TBL_STIP_EXCEP_MASTER : cuid, managed {
    key field_id                    : String;
        executiveRuleViolation      : String;
        programName                 : String;
        formName                    : String;
        currentlyWith               : String;
        userId                      : Integer;
        empFirstName                : String;
        empLastName                 : String;
        middleName                  : String;
        mgrUserId                   : Integer;
        mgrName                     : String;
        mgrFirstName                : String;
        mgrLastName                 : String;
        localCurrencyCode           : String;
        assignmentTargetAmountTotal : Decimal;
        finalPayout                 : Decimal;
        percentTarget               : Integer;
        varpayNotes                 : String;
        custPERNR                   : Integer;
        custBusUnit                 : String;
        custDivision                : String;
        custDepartment              : String;
        custJobTitle                : String;
        custPayGradeLevel           : Integer;
        custEligibleEarningsSum     : Integer;
        custBonusTgtPct             : Integer;
        custPDScore                 : String;
        custIPMPct                  : Integer;
        custAdjustedSTIPayPct       : Integer;
}

// RSU Exception Master Data
entity ZHR_COMP_TBL_RSU_EXCEP_MASTER : cuid, managed {
    key field_id                : String;
    key custPERNR               : Integer;
        executiveRuleViolation  : String;
        mgrFirstName            : String;
        mgrLastName             : String;
        userName                : String;
        custBusUnit             : String;
        custDivision            : String;
        custDepartment          : String;
        jobTitle                : String;
        curSalary               : Decimal;
        custPDScore             : String;
        custPerformanceZone     : Integer;
        custTalentPlanningScore : String;
        lumpSum                 : Integer;
        lumpSum_Percentage      : Decimal;
        commentforlumpSum       : String;
        custLTIAwardCurrency    : String;
        salaryNote              : String;
}

// STIP Model Header Table
entity ZHR_COMP_TBL_STIP_MODEL_HEADER : cuid, managed {
    key year        : Integer;
    key model_Id    : String;
    key modelOption : String;
    key targetTab   : String;
        totalPool   : Decimal;
        totalCost   : Decimal;
        remaning    : Decimal;
        status      : String;
}

// STIP Model Threshold Table
entity ZHR_COMP_TBL_STIP_MODEL_ITEM : cuid, managed {
    key year                   : Integer;
    key model_Id               : String;
    key modelOption            : String;
    key targetTab              : String;
        custPerformancesubZone : Integer;
        payzones               : String;
        custPDScore            : String;
        corpGuidelines         : String;
        empCount               : Integer;
        distribution           : Decimal;
        sumOfTargetpool        : Decimal;
        proposed_IPM1          : Decimal;
        proposed_IPM2          : Decimal;
        Proposed_IPM3          : Decimal;
        cost                   : Integer;
}

// STIP Model Calibration Table
entity ZHR_COMP_TBL_STIP_CALIBRATION : cuid, managed {
    key year                 : Integer;
        calibrationName      : String;
        totalBudget          : Decimal;
        totalSpend           : Decimal;
        remaining            : Decimal;
        remaining_Percentage : Decimal;
        employeecount        : Integer;
        custBusUnit          : String;
        custDivision         : String;
        managerName          : String;
        jobTitle             : String;
        custPDScore          : String;
        PerformanceSubZone   : String;
}

// CRV Model Calibration Table
entity ZHR_COMP_TBL_CRV_CALIBRATION : cuid, managed {
    key year                   : Integer;
        calibrationName        : String;
        totalBudget            : Decimal;
        totalSpend             : Decimal;
        annualRemainingPool    : Decimal;
        merit                  : Decimal;
        lumpSum                : Decimal;
        distributed_Percentage : Decimal;
        custBusUnit            : String;
        custDivision           : String;
        managerName            : String;
        jobTitle               : String;
        custPDScore            : String;
        performanceSubZone     : String;
        jbCode                 : String;
        compaRatio             : Decimal;
}

// RSU Model Calibration Table
entity ZHR_COMP_TBL_RSU_CALIBRATION : cuid, managed {
    key year             : Integer;
        calibrationName  : String;
        totalBudget      : Decimal;
        allocatedAward   : Decimal;
        remainingBudget  : Decimal;
        employeeCount    : Decimal;
        businessUnit     : String;
        division         : String;
        jobTitle         : String;
        performanceZone  : Integer;
        PDPScore         : String;
        managerFirstName : String;
}

// CRV Merit Master Table
entity ZHR_COMP_TBL_CRV_MERITMASTER : cuid, managed {
    key key1                          : String;
    key key2                          : String;
        compaRatioRanges              : String;
        formulaName                   : String;
        ratioFrom                     : Integer;
        ratioFromInclusive            : String;
        ratioTo                       : Integer;
        ratioToInclusive              : String;
        customCriteria0               : String;
        customCriteria0_value         : String;
        customCriteria0_fromValue     : String;
        customCriteria0_fromInclusive : String;
        customCriteria0_toValue       : String;
        customCriteria0_toInclusive   : String;
        customCriteria1               : String;
        customCriteria1_value         : String;
        customCriteria1_fromValue     : String;
        customCriteria1_fromInclusive : String;
        customCriteria1_toValue       : String;
        customCriteria1_toInclusive   : String;
        customCriteria2               : String;
        customCriteria2_value         : Decimal;
        customCriteria2_fromValue     : String;
        customCriteria2_fromInclusive : String;
        customCriteria2_toValue       : String;
        customCriteria2_toInclusive   : String;
        min                           : Integer;
        low                           : Decimal;
        default                       : Decimal;
        high                          : Decimal;
        max                           : Integer;
}

// STIP MeritMaster Table
entity ZHR_COMP_TBL_STIP_MERITMASTER : cuid, managed {
    key key1                          : String;
        formulaName                   : String;
        customCriteria0               : String;
        customCriteria0_value         : String;
        customCriteria0_fromValue     : String;
        customCriteria0_fromInclusive : String;
        customCriteria0_toValue       : String;
        customCriteria0_toInclusive   : String;
        customCriteria1               : String;
        customCriteria1_value         : String;
        customCriteria1_fromValue     : String;
        customCriteria1_fromInclusive : String;
        customCriteria1_toValue       : String;
        customCriteria1_toInclusive   : String;
        customCriteria2               : String;
        customCriteria2_value         : Decimal;
        customCriteria2_fromValue     : String;
        customCriteria2_fromInclusive : String;
        customCriteria2_toValue       : String;
        customCriteria2_toInclusive   : String;
        min                           : Integer;
        low                           : Integer;
        default                       : Integer;
        high                          : Integer;
        max                           : Integer;
}

// CRV Model Header Table
entity ZHR_COMP_TBL_CRV_MODEL_HEADER : cuid, managed {
    key year                        : Integer;
    key model_Id                    : String;
    key modelOption                 : String;
    key targetTab                   : String;
        totalDistributed            : Decimal;
        totalDistrubuted_Percentage : Decimal;
        remainingPool               : Decimal;
        remainingPool_Percentage    : Decimal;
        remaningPoolStatus          : String;
        status                      : String;

        // Composition to ZHR_COMP_TBL_CRV_MODEL_THRSHLD_HEADER
        to_ThresholdHeaders         : Composition of many ZHR_COMP_TBL_CRV_MODEL_THRSHLD_HEADER
                                          on  to_ThresholdHeaders.year        = year
                                          and to_ThresholdHeaders.model_Id    = model_Id
                                          and to_ThresholdHeaders.modelOption = modelOption
                                          and to_ThresholdHeaders.targetTab   = targetTab;

        // Composition to ZHR_COMP_TBL_CRV_MODEL_THRSHLD_ITEM
        to_ThresholdItems           : Composition of many ZHR_COMP_TBL_CRV_MODEL_THRSHLD_ITEM
                                          on  to_ThresholdItems.year        = year
                                          and to_ThresholdItems.model_Id    = model_Id
                                          and to_ThresholdItems.modelOption = modelOption
                                          and to_ThresholdItems.targetTab   = targetTab;
}

// CRV Model Threshold Table
entity ZHR_COMP_TBL_CRV_MODEL_THRSHLD_HEADER : cuid, managed {
    key year                   : Integer;
    key model_Id               : String;
    key modelOption            : String;
    key targetTab              : String;
    key custPerformancesubZone : Integer;
        payzones               : String;
        custPDScore            : String;
        count                  : Integer;
        totalBudget            : Decimal;
        totalCost              : Decimal;
        indicator              : String;
}

// Dynamic Column Value Table
entity ZHR_COMP_TBL_CRV_MODEL_THRSHLD_ITEM : cuid, managed {
    key year                   : Integer;
    key model_Id               : String;
    key modelOption            : String;
    key targetTab              : String;
    key custPerformancesubZone : Integer;
    key payzones               : String;
    key custPDScore            : String;
    key threshold_Id           : UUID;
        value                  : Integer;
        fieldUsage             : String;
}

// Model Master Table

entity ZHR_COMP_TBL_MODEL_MASTER : cuid, managed {
    key year                 : Integer;
    key model_Id             : String;
    key appType              : String;
        approved_rejected_by : String;
        approved_rejected_on : String;
        published_by         : String;
        published_on         : String;
        usage                : String;
}
