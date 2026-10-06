.class Lu3/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lu3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu3/c;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu3/c;-><init>(Landroid/content/Context;Lu3/c$a;)V

    sput-object v0, Lu3/c$b;->a:Lu3/c;

    return-void
.end method

.method static synthetic a()Lu3/c;
    .locals 1

    sget-object v0, Lu3/c$b;->a:Lu3/c;

    return-object v0
.end method
