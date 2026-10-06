.class public Lq5/d;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq5/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/AbsModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/miui/firstaidkit/FirstAidKitActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0170

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lq5/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lq5/d;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lq5/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lq5/d;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/AbsModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq5/d;->b:Ljava/util/List;

    return-void
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lq5/d$a;

    invoke-direct {v0, p1}, Lq5/d$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public d(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    iput-object p1, p0, Lq5/d;->c:Lcom/miui/firstaidkit/FirstAidKitActivity;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq5/d;->a:Ljava/lang/String;

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
