.class public Lq5/e;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq5/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/securityscan/model/AbsModel;

.field private b:Lcom/miui/firstaidkit/FirstAidKitActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0494

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lq5/e;)Lcom/miui/securityscan/model/AbsModel;
    .locals 0

    iget-object p0, p0, Lq5/e;->a:Lcom/miui/securityscan/model/AbsModel;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/miui/securityscan/model/AbsModel;
    .locals 1

    iget-object v0, p0, Lq5/e;->a:Lcom/miui/securityscan/model/AbsModel;

    return-object v0
.end method

.method public c(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    iput-object p1, p0, Lq5/e;->a:Lcom/miui/securityscan/model/AbsModel;

    return-void
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lq5/e$a;

    invoke-direct {v0, p1}, Lq5/e$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public d(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    iput-object p1, p0, Lq5/e;->b:Lcom/miui/firstaidkit/FirstAidKitActivity;

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
