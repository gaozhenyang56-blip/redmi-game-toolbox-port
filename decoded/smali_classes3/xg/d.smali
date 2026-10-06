.class public abstract Lxg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lxg/d;
    .locals 1

    invoke-static {}, Lxg/e;->c()Lxg/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/applicationlock/widget/LockPatternView$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
