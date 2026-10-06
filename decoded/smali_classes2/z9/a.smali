.class public Lz9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/regex/Pattern;

.field public static b:Ljava/util/regex/Pattern;

.field public static c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\u4e00-\\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz9/a;->a:Ljava/util/regex/Pattern;

    const-string v0, "^-?[0-9]+(\\.[0-9]*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz9/a;->b:Ljava/util/regex/Pattern;

    const-string v0, "^(?=.*[a-zA-Z])(?!.*\\s)(?!.*\\.)([a-zA-Z0-9!@#$%^&*+-~]){1,500}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz9/a;->c:Ljava/util/regex/Pattern;

    return-void
.end method
