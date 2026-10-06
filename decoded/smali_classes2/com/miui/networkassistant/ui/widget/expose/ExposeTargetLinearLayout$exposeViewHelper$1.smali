.class public final Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetLinearLayout$exposeViewHelper$1;
.super Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetLinearLayout;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetLinearLayout$exposeViewHelper$1;->this$0:Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetLinearLayout;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetLinearLayout$exposeViewHelper$1;->this$0:Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetLinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
