.class public abstract Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;,
        Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">",
        "Lmiuix/recyclerview/card/e<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field protected mContext:Lmiuix/appcompat/app/AppCompatActivity;

.field protected mIsInSearch:Z

.field protected mOnItemClickListener:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;

.field protected mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

.field protected mSearchInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lcom/miui/networkassistant/service/IFirewallBinder;)V
    .locals 1

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mContext:Lmiuix/appcompat/app/AppCompatActivity;

    new-instance p1, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->getFirewallRuleCacherType()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;-><init>(Lcom/miui/networkassistant/service/IFirewallBinder;I)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    return-void
.end method


# virtual methods
.method public abstract getComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getFirewallRuleCacherType()I
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mContext:Lmiuix/appcompat/app/AppCompatActivity;

    check-cast p2, Lcom/miui/common/base/BaseActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalPadding(Landroid/view/View;)V

    return-void
.end method

.method public abstract setData(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public setFirewallBinder(Lcom/miui/networkassistant/service/IFirewallBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mRuleCacher:Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;->setFirewallBinder(Lcom/miui/networkassistant/service/IFirewallBinder;)V

    return-void
.end method

.method public setInSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mIsInSearch:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mOnItemClickListener:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;

    return-void
.end method

.method public setSearchInput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->mSearchInput:Ljava/lang/String;

    return-void
.end method

.method public setSlotNum(I)V
    .locals 0

    return-void
.end method
