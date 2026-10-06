.class Lcom/miui/common/card/CommonlyUsedFuncItemViewData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/CommonlyUsedFuncItemViewData;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/common/card/CommonlyUsedFuncItemViewData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData$1;->this$0:Lcom/miui/common/card/CommonlyUsedFuncItemViewData;

    iput-object p2, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData$1;->val$action:Ljava/lang/String;

    invoke-static {v0}, Ldd/c;->b(Ljava/lang/String;)V

    return-void
.end method
