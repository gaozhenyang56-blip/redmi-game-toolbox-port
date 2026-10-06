.class Lcom/miui/antivirus/activity/MainActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MainActivity;->W1(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$i;->b:Lcom/miui/antivirus/activity/MainActivity;

    iput-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$i;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lef/x;->z()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lef/x;->R(Z)V

    const-string p1, "open"

    invoke-static {p1}, Lq2/b$a;->o(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$i;->b:Lcom/miui/antivirus/activity/MainActivity;

    iget-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$i;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/activity/MainActivity;->O1(Landroid/content/Context;)V

    const-string p1, "update"

    invoke-static {p1}, Lq2/b$a;->r(Ljava/lang/String;)V

    return-void
.end method
