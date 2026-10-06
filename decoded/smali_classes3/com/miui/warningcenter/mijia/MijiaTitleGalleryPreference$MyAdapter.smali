.class Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference$MyAdapter;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;


# direct methods
.method public constructor <init>(Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference$MyAdapter;->this$0:Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    iput-object p2, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference$MyAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->access$100()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference$MyAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0e056e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->access$100()[I

    move-result-object v2

    aget p2, v2, p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
