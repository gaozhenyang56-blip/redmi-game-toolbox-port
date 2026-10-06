.class Lcom/miui/antispam/ui/fragment/CallLogFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/fragment/CallLogFragment$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/fragment/CallLogFragment$a;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/fragment/CallLogFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$a$a;->a:Lcom/miui/antispam/ui/fragment/CallLogFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$a$a;->a:Lcom/miui/antispam/ui/fragment/CallLogFragment$a;

    iget-object p1, p1, Lcom/miui/antispam/ui/fragment/CallLogFragment$a;->a:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->b0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$a$a;->a:Lcom/miui/antispam/ui/fragment/CallLogFragment$a;

    iget-object v0, v0, Lcom/miui/antispam/ui/fragment/CallLogFragment$a;->a:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->d0(Lcom/miui/antispam/ui/fragment/CallLogFragment;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
