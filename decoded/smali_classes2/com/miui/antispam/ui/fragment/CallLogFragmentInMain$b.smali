.class Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->o0(Landroid/view/ActionMode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/ActionMode;

.field final synthetic c:Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;ZLandroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain$b;->c:Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;

    iput-boolean p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain$b;->a:Z

    iput-object p3, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain$b;->b:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain$b;->c:Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;

    iget-boolean p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain$b;->a:Z

    invoke-static {p1, p2}, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->u0(Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;Z)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain$b;->b:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
