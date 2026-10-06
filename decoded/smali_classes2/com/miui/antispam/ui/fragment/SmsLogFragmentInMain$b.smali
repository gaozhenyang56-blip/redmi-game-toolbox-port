.class Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->o0(Landroid/view/ActionMode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/ActionMode;

.field final synthetic c:Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;ZLandroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$b;->c:Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;

    iput-boolean p2, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$b;->a:Z

    iput-object p3, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$b;->b:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$b;->a:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lc2/a;->p()V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$b;->c:Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;

    iget-object p2, p1, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    check-cast p2, Ll2/i;

    invoke-virtual {p2}, Ll2/i;->C()[J

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->u0(Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;[J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$b;->c:Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;

    iget-object p2, p1, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    check-cast p2, Ll2/i;

    invoke-virtual {p2}, Ll2/i;->E()[J

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->u0(Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;[J)V

    :goto_0
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$b;->b:Landroid/view/ActionMode;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_1
    return-void
.end method
