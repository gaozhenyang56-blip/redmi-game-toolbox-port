.class public Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field mContainer:Landroid/widget/RelativeLayout;

.field mDate:Landroid/widget/TextView;

.field mFirst:Landroid/widget/TextView;

.field mIconType:Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;

.field mLocation:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0cf3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$MyViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0b0c58

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$MyViewHolder;->mDate:Landroid/widget/TextView;

    const v0, 0x7f0b0c93

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$MyViewHolder;->mLocation:Landroid/widget/TextView;

    const v0, 0x7f0b0c71

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$MyViewHolder;->mFirst:Landroid/widget/TextView;

    const v0, 0x7f0b0641

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$MyViewHolder;->mIconType:Lcom/miui/warningcenter/disasterwarning/view/DrawBitmapView;

    const v0, 0x7f0b027f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$MyViewHolder;->mContainer:Landroid/widget/RelativeLayout;

    return-void
.end method
