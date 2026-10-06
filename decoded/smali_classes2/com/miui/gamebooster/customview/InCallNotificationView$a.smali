.class Lcom/miui/gamebooster/customview/InCallNotificationView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/InCallNotificationView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/InCallNotificationView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/InCallNotificationView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/InCallNotificationView$a;->a:Lcom/miui/gamebooster/customview/InCallNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/customview/InCallNotificationView$a;->a:Lcom/miui/gamebooster/customview/InCallNotificationView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/InCallNotificationView;->a(Lcom/miui/gamebooster/customview/InCallNotificationView;)Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->h(Z)V

    return-void
.end method
