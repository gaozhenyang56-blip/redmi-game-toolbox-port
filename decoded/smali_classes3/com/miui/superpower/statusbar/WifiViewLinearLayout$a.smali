.class Lcom/miui/superpower/statusbar/WifiViewLinearLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/superpower/statusbar/WifiViewLinearLayout;


# direct methods
.method constructor <init>(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$a;->a:Lcom/miui/superpower/statusbar/WifiViewLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$a;->a:Lcom/miui/superpower/statusbar/WifiViewLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$a;->a:Lcom/miui/superpower/statusbar/WifiViewLinearLayout;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->a(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;)V

    :cond_0
    return-void
.end method
