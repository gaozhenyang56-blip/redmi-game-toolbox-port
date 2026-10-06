.class Lcom/miui/antivirus/activity/MainActivity$o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o0"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/miui/antivirus/activity/MainActivity$g0;


# direct methods
.method public constructor <init>(ILcom/miui/antivirus/activity/MainActivity$g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/antivirus/activity/MainActivity$o0;->a:I

    iput-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$o0;->b:Lcom/miui/antivirus/activity/MainActivity$g0;

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object v0

    iget v1, p0, Lcom/miui/antivirus/activity/MainActivity$o0;->a:I

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity$o0;->b:Lcom/miui/antivirus/activity/MainActivity$g0;

    invoke-virtual {v0, p1, v1, v2}, Lo2/g;->s(Lcom/miui/guardprovider/aidl/IAntiVirusServer;ILo2/g$i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
