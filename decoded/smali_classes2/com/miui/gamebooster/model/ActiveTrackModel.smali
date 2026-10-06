.class public Lcom/miui/gamebooster/model/ActiveTrackModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/miui/gamebooster/globalgame/util/NoProguard;
.end annotation


# static fields
.field public static final TYPE_CLICK:Ljava/lang/String; = "click"

.field public static final TYPE_RECEIVE:Ljava/lang/String; = "receive"

.field public static final TYPE_VIEW:Ljava/lang/String; = "view"


# instance fields
.field private a:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private game:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private transient mFormat:Ljava/text/SimpleDateFormat;

.field private pageSource:Ljava/lang/String;

.field private recommendPkg:Ljava/lang/String;

.field private redirectType:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private showWay:Ljava/lang/String;

.field private times:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->mFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->mFormat:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->s:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->game:Ljava/lang/String;

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->date:Ljava/lang/String;

    const-string p1, "01-18-12"

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->channel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/gamebooster/model/ActiveTrackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p7, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->channel:Ljava/lang/String;

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->redirectType:Ljava/lang/String;

    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->pageSource:Ljava/lang/String;

    iput-object p10, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->showWay:Ljava/lang/String;

    iput-object p11, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->recommendPkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getGame()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->game:Ljava/lang/String;

    return-object v0
.end method

.method public getI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->pageSource:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->recommendPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->redirectType:Ljava/lang/String;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getShowWay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->showWay:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->times:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->a:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->channel:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->date:Ljava/lang/String;

    return-void
.end method

.method public setGame(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->game:Ljava/lang/String;

    return-void
.end method

.method public setI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->i:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setPageSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->pageSource:Ljava/lang/String;

    return-void
.end method

.method public setRecommendPkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->recommendPkg:Ljava/lang/String;

    return-void
.end method

.method public setRedirectType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->redirectType:Ljava/lang/String;

    return-void
.end method

.method public setS(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->s:Ljava/lang/String;

    return-void
.end method

.method public setShowWay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->showWay:Ljava/lang/String;

    return-void
.end method

.method public setTimes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->times:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveTrackModel;->type:Ljava/lang/String;

    return-void
.end method
