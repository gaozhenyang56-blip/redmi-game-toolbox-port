.class Lcom/miui/antivirus/activity/MainActivity$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$s;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$s;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->a1(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object p1

    invoke-virtual {p1}, Lo2/b;->i()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$s;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    return-void
.end method
