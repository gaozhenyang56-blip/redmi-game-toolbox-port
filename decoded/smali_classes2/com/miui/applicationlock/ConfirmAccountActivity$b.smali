.class Lcom/miui/applicationlock/ConfirmAccountActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/ConfirmAccountActivity;->p0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/ConfirmAccountActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$b;->a:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$b;->a:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->f0(Lcom/miui/applicationlock/ConfirmAccountActivity;)V

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$b;->a:Lcom/miui/applicationlock/ConfirmAccountActivity;

    const-class v0, Lcom/miui/applicationlock/ApplockRecommendActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "extra_data"

    const-string v0, "not_home_start"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$b;->a:Lcom/miui/applicationlock/ConfirmAccountActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$b;->a:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
