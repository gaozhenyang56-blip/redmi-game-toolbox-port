.class Lpd/c$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpd/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# static fields
.field private static final a:Lpd/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lpd/c;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpd/c;-><init>(Landroid/content/Context;Lpd/c$b;)V

    sput-object v0, Lpd/c$k;->a:Lpd/c;

    return-void
.end method

.method static synthetic a()Lpd/c;
    .locals 1

    sget-object v0, Lpd/c$k;->a:Lpd/c;

    return-object v0
.end method
