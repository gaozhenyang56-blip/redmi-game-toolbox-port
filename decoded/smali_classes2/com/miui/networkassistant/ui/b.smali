.class public final synthetic Lcom/miui/networkassistant/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/b;->a:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/b;->a:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->e0(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
