.class public Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference$MyAdapter;
    }
.end annotation


# static fields
.field private static PICTURES:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndicator:Lcom/miui/privacyapps/view/ViewPagerIndicator;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->PICTURES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0810fe
        0x7f0810ff
        0x7f081100
        0x7f081101
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;)Lcom/miui/privacyapps/view/ViewPagerIndicator;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->mIndicator:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    return-object p0
.end method

.method static synthetic access$100()[I
    .locals 1

    sget-object v0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->PICTURES:[I

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0d8d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b056b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->mIndicator:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    new-instance p1, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference$MyAdapter;

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference$MyAdapter;-><init>(Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference$1;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference$1;-><init>(Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->mIndicator:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    sget-object v0, Lcom/miui/warningcenter/mijia/MijiaTitleGalleryPreference;->PICTURES:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setIndicatorNum(I)V

    return-void
.end method
