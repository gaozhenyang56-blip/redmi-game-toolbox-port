.class Li9/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Li9/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Li9/b;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li9/b;-><init>(Landroid/content/Context;Li9/b$a;)V

    sput-object v0, Li9/b$b;->a:Li9/b;

    return-void
.end method

.method static synthetic a()Li9/b;
    .locals 1

    sget-object v0, Li9/b$b;->a:Li9/b;

    return-object v0
.end method
