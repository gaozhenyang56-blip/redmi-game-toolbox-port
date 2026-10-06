.class Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field final synthetic c:Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;->c:Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo [appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/firstaidkit/model/internet/BackgroundConnectionModel$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
