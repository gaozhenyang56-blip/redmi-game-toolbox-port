.class Lcom/miui/luckymoney/ui/view/HeadsUpView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/ui/view/HeadsUpView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/HeadsUpView;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/HeadsUpView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView$2;->this$0:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/luckymoney/ui/view/HeadsUpView$2;->this$0:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    invoke-virtual {p1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->dismiss()V

    return-void
.end method
