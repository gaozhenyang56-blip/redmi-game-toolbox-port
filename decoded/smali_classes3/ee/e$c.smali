.class Lee/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lee/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static a:Lee/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lee/e;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lee/e;-><init>(Landroid/content/Context;Lee/e$a;)V

    sput-object v0, Lee/e$c;->a:Lee/e;

    return-void
.end method

.method static synthetic a()Lee/e;
    .locals 1

    sget-object v0, Lee/e$c;->a:Lee/e;

    return-object v0
.end method
