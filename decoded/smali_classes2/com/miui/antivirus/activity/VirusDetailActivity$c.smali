.class Lcom/miui/antivirus/activity/VirusDetailActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/VirusDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/VirusDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/VirusDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$c;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$c;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo2/c;->m(Landroid/content/Context;Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$c;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/VirusDetailActivity;->h0(Lcom/miui/antivirus/activity/VirusDetailActivity;)V

    return-void
.end method
