.class public final synthetic Lcom/miui/networkassistant/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lak/a;


# direct methods
.method public synthetic constructor <init>(Lak/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/utils/b;->a:Lak/a;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/utils/b;->a:Lak/a;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/FirewallUtils;->a(Lak/a;Landroid/content/DialogInterface;)V

    return-void
.end method
