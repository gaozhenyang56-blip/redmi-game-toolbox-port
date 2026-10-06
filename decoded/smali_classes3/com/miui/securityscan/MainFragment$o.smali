.class Lcom/miui/securityscan/MainFragment$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->N2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$o;->b:Lcom/miui/securityscan/MainFragment;

    iput-object p2, p0, Lcom/miui/securityscan/MainFragment$o;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$o;->a:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lpf/i;->v(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$o;->a:Landroid/content/Context;

    check-cast p1, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {p1, p2}, Lcom/miui/securityscan/MainActivity;->G0(Z)V

    const-string p1, "module_click"

    const-string p2, "dlg_onlineservice_ok"

    invoke-static {p1, p2}, Lqf/c;->T0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
