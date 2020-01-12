#if !canImport(ObjectiveC)
    import XCTest

    extension CompoundQueriesTest {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__CompoundQueriesTest = [
            ("testBoolQuery_decode", testBoolQuery_decode),
            ("testBoolQuery_encode", testBoolQuery_encode),
            ("testConstantScoreQuery_decode", testConstantScoreQuery_decode),
            ("testConstantScoreQuery_encode", testConstantScoreQuery_encode),
            ("testFunctionScoreQuery_encode", testFunctionScoreQuery_encode),
        ]
    }

    extension JoiningQueriesTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__JoiningQueriesTests = [
            ("test_01_nestedQuery_encode", test_01_nestedQuery_encode),
            ("test_02_nestedQuery_decode", test_02_nestedQuery_decode),
            ("test_03_hasChildQuery_encode", test_03_hasChildQuery_encode),
            ("test_04_hasChildQuery_decode", test_04_hasChildQuery_decode),
            ("test_05_hasParentQuery_encode", test_05_hasParentQuery_encode),
            ("test_06_hasParentQuery_decode", test_06_hasParentQuery_decode),
            ("test_07_parentIdQuery_encode", test_07_parentIdQuery_encode),
            ("test_08_parentIdQuery_decode", test_08_parentIdQuery_decode),
        ]
    }

    extension JoiningQueryBuilderTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__JoiningQueryBuilderTests = [
            ("test_01_nestedQueryBuilder", test_01_nestedQueryBuilder),
            ("test_02_nestedQueryBuilder_missing_path", test_02_nestedQueryBuilder_missing_path),
            ("test_03_nestedQueryBuilder_missing_query", test_03_nestedQueryBuilder_missing_query),
            ("test_04_hasChildQueryBuilder", test_04_hasChildQueryBuilder),
            ("test_05_hasChildQueryBuilder_missing_type", test_05_hasChildQueryBuilder_missing_type),
            ("test_06_hasChildQueryBuilder_missing_query", test_06_hasChildQueryBuilder_missing_query),
            ("test_07_hasParentQueryBuilder", test_07_hasParentQueryBuilder),
            ("test_08_hasParentQueryBuilder_missing_parentType", test_08_hasParentQueryBuilder_missing_parentType),
            ("test_09_hasParentQueryBuilder_missing_query", test_09_hasParentQueryBuilder_missing_query),
            ("test_10_parentIdQueryBuilder", test_10_parentIdQueryBuilder),
            ("test_11_parentIdQueryBuilder_missing_type", test_11_parentIdQueryBuilder_missing_type),
            ("test_12_parentIdQueryBuilder_missing_id", test_12_parentIdQueryBuilder_missing_id),
        ]
    }

    extension MatchAllQueryTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__MatchAllQueryTests = [
            ("testMatchAllBoost", testMatchAllBoost),
            ("testMatchAllQuery", testMatchAllQuery),
            ("testMatchNonQuery", testMatchNonQuery),
        ]
    }

    extension ScoreFunctionTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__ScoreFunctionTests = [
            ("testExponentialDecayScoreFunction_decode", testExponentialDecayScoreFunction_decode),
            ("testExponentialDecayScoreFunction_encode", testExponentialDecayScoreFunction_encode),
            ("testFieldValueFactorScoreFunction_decode", testFieldValueFactorScoreFunction_decode),
            ("testFieldValueFactorScoreFunction_encode", testFieldValueFactorScoreFunction_encode),
            ("testGaussDecayScoreFunction_decode", testGaussDecayScoreFunction_decode),
            ("testGaussDecayScoreFunction_encode", testGaussDecayScoreFunction_encode),
            ("testLinearDecayScoreFunction_decode", testLinearDecayScoreFunction_decode),
            ("testLinearDecayScoreFunction_encode", testLinearDecayScoreFunction_encode),
            ("testRandomScoreFunction_decode", testRandomScoreFunction_decode),
            ("testRandomScoreFunction_encode", testRandomScoreFunction_encode),
            ("testScriptScoreFunction_decode", testScriptScoreFunction_decode),
            ("testScriptScoreFunction_encode", testScriptScoreFunction_encode),
            ("testWeightScoreFunction_decode", testWeightScoreFunction_decode),
            ("testWeightScoreFunction_encode", testWeightScoreFunction_encode),
        ]
    }

    extension ScriptTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__ScriptTests = [
            ("testScript_decode_short", testScript_decode_short),
            ("testScript_decode", testScript_decode),
            ("testScript_encode_short", testScript_encode_short),
            ("testScript_encode", testScript_encode),
        ]
    }

    public func __allTests() -> [XCTestCaseEntry] {
        return [
            testCase(CompoundQueriesTest.__allTests__CompoundQueriesTest),
            testCase(JoiningQueriesTests.__allTests__JoiningQueriesTests),
            testCase(JoiningQueryBuilderTests.__allTests__JoiningQueryBuilderTests),
            testCase(MatchAllQueryTests.__allTests__MatchAllQueryTests),
            testCase(ScoreFunctionTests.__allTests__ScoreFunctionTests),
            testCase(ScriptTests.__allTests__ScriptTests),
        ]
    }
#endif
