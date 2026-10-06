.class Lcom/miui/antivirus/activity/MainActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MainActivity;->onActivityCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$k;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$k;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->e0(Lcom/miui/antivirus/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object v0

    invoke-virtual {v0}, Lo2/g;->g0()V

    return-void
.end method
