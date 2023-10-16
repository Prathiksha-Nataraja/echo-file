# load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# def rules_dependencies():
#     http_archive(
#         name = "io_bazel_rules_go",
#         urls = ["https://github.com/bazelbuild/rules_go/releases/download/0.24.7/rules_go-0.24.7.tar.gz"],
#         sha256 = "4d8d6244320dd751590f9100cf39fd7a4b75cd901e1f3ffdfd6f048328883695",
#     )

#     http_archive(
#         name = "bazel_gazelle",
#         urls = ["https://github.com/bazelbuild/bazel-gazelle/releases/download/0.22.2/bazel-gazelle-0.22.2.tar.gz"],
#         sha256 = "be9296bfd64882e3c08e3283c6c289e2716470be2234b886d411fd6a4f6932cd",
#     )

# def openwhisk_task(name, kind, input_args, properties):
#     customize(
#         name = ,
#         kind = openwhisk_task,
#         metadata = {
#             "name" : name,
#         },
#         spec = {
#             "kind" = kind,
#             "input_args" = input_args,
#             "properties" = properties,
#         },
#     )

# openwhisk_task(
#     name = "employee_id",
#     kind = "action",
#     input_args = [
#         {
#             "name" : "role",
#             "type" : "string",
#         },
#     ],
#     properties = {
#         "api_host" = "http://127.0.0.1:7890",
#         "auth-token" = "",
#         "insecure" = "true",
#         "namespace" = "guest",
#     },
# )

# def flow()

################################

# Tasks:
#     - Task: 1
#       kind: kind of action
#       name: employee_ids
#       input_args: 

const = const (
        api_host = "http://127.0.0.1:7890",
        auth_token = "23bc46b1-71f6-4ed5-8c54-816aa4f8c502:123zO3xZCLrMN6v2BKK1dXYFpXlPkccOFqm12CdAsMgRU4VrNZ9lyGVCGuMDGIwP",
        insecure = "true",
        namespace = "guest"
    )

def run (plan,args):
    
    task1 = task1 (
        kind = "openwhisk",
        name = "employee_ids",
        input_args = {
            "name" : "role",
            "name_type" : "String"
        },
        output_args = {
            "name" : "ids",
            "name_type" : "Vec<i32>"
        },
        properties = const,
        depends_on = "null"

    )

    task2 = task2 (
        kind = "openwhisk",
        name = "getsalaries",
        input_args = {
            "name" : "id",
            "name_type" : "i32"
        },
        output_args = {
            "name" : "salary",
            "name_type" : "i32"
        },
        properties = const,
        depends_on = {
            "operation" : "map",
            "task" : {
                "name" : task1.name,
                "fields" : task1.output_args.name
            }
        },

    )


    
    
        

