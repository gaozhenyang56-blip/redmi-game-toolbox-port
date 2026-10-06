.class Lcom/miui/antivirus/activity/MainActivity$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MainActivity;->H1()V
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

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$r;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$r;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->a1(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$r;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->f0(Lcom/miui/antivirus/activity/MainActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo2/b;->l(Z)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lef/x;->R(Z)V

    :goto_0
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$r;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->d1(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method
