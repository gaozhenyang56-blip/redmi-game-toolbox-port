.class Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$a;->a:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$a;->a:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->d0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)I

    move-result v1

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$a;->a:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->e0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)[Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$a;->a:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->g0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)[I

    move-result-object v3

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$a;->a:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->h0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)I

    move-result v4

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$a;->a:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->i0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->j0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;I[Ljava/lang/String;[III)V

    return-void
.end method
