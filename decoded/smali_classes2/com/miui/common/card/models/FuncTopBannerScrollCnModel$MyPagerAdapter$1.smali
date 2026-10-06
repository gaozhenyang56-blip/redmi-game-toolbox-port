.class Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;

.field final synthetic val$commonFunction:Lcom/miui/common/card/functions/BaseFunction;

.field final synthetic val$funcTopBannerScrollData:Lcom/miui/common/card/functions/FuncTopBannerScrollData;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;Lcom/miui/common/card/functions/BaseFunction;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter$1;->this$0:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;

    iput-object p2, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter$1;->val$commonFunction:Lcom/miui/common/card/functions/BaseFunction;

    iput-object p3, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter$1;->val$funcTopBannerScrollData:Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter$1;->val$commonFunction:Lcom/miui/common/card/functions/BaseFunction;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/functions/BaseFunction;->onClick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter$1;->this$0:Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter$1;->val$funcTopBannerScrollData:Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-static {p1, v0}, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;->access$000(Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$MyPagerAdapter;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

    return-void
.end method
