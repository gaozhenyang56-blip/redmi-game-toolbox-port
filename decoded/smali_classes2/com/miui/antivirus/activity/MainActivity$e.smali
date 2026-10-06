.class Lcom/miui/antivirus/activity/MainActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MainActivity;->M1()V
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

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$e;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$e;->a:Lcom/miui/antivirus/activity/MainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/antivirus/activity/MainActivity;->r0(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$e;->a:Lcom/miui/antivirus/activity/MainActivity;

    sget-object p2, Lcom/miui/antivirus/activity/MainActivity$r0;->a:Lcom/miui/antivirus/activity/MainActivity$r0;

    invoke-static {p1, p2}, Lcom/miui/antivirus/activity/MainActivity;->E0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity$r0;)Lcom/miui/antivirus/activity/MainActivity$r0;

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$e;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->J0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$e;->a:Lcom/miui/antivirus/activity/MainActivity;

    const v0, 0x7f120459

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/ui/MainActivityView;->setActionButtonText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$e;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->J0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$e;->a:Lcom/miui/antivirus/activity/MainActivity;

    const v0, 0x7f12064b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/ui/MainActivityView;->setContentSummary(Ljava/lang/CharSequence;)V

    const-string p1, "stop_quit"

    invoke-static {p1}, Lq2/b$a;->l(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$e;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->m0(Lcom/miui/antivirus/activity/MainActivity;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$e;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
