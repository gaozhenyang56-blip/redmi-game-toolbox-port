.class Lvf/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lvf/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lvf/l;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvf/l;-><init>(Landroid/content/Context;Lvf/l$a;)V

    sput-object v0, Lvf/l$c;->a:Lvf/l;

    return-void
.end method

.method static synthetic a()Lvf/l;
    .locals 1

    sget-object v0, Lvf/l$c;->a:Lvf/l;

    return-object v0
.end method
