.class public Lcom/miui/gamebooster/globalgame/module/GameListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/miui/gamebooster/globalgame/util/NoProguard;
.end annotation


# instance fields
.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "desc"
    .end annotation
.end field

.field public gameIndex:I

.field public gameLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gameLink"
    .end annotation
.end field

.field public gameLinkType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gameLinkType"
    .end annotation
.end field

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public score:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "score"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/globalgame/module/GameListItem;)V
    .locals 8

    iget-object v1, p1, Lcom/miui/gamebooster/globalgame/module/GameListItem;->score:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/gamebooster/globalgame/module/GameListItem;->icon:Ljava/lang/String;

    iget-object v4, p1, Lcom/miui/gamebooster/globalgame/module/GameListItem;->name:Ljava/lang/String;

    iget v5, p1, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLinkType:I

    iget v6, p1, Lcom/miui/gamebooster/globalgame/module/GameListItem;->id:I

    iget-object v7, p1, Lcom/miui/gamebooster/globalgame/module/GameListItem;->desc:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/gamebooster/globalgame/module/GameListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameIndex:I

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->score:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLink:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->icon:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->name:Ljava/lang/String;

    iput p5, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLinkType:I

    iput p6, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->id:I

    iput-object p7, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->score:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->name:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLinkType:I

    iput v1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->id:I

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->desc:Ljava/lang/String;

    iput v1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameIndex:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "score"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->score:Ljava/lang/String;

    const-string v0, "gameLink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLink:Ljava/lang/String;

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->icon:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->name:Ljava/lang/String;

    const-string v0, "gameLinkType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLinkType:I

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->id:I

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getGameIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameIndex:I

    return v0
.end method

.method public getGameLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLink:Ljava/lang/String;

    return-object v0
.end method

.method public getGameLinkType()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLinkType:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->score:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->desc:Ljava/lang/String;

    return-void
.end method

.method public setGameIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameIndex:I

    return-void
.end method

.method public setGameLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLink:Ljava/lang/String;

    return-void
.end method

.method public setGameLinkType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->gameLinkType:I

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/module/GameListItem;->score:Ljava/lang/String;

    return-void
.end method
