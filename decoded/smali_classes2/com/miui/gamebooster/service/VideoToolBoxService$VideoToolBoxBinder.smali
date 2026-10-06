.class public Lcom/miui/gamebooster/service/VideoToolBoxService$VideoToolBoxBinder;
.super Lcom/miui/gamebooster/service/IVideoToolBox$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/VideoToolBoxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoToolBoxBinder"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/VideoToolBoxService;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/VideoToolBoxService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$VideoToolBoxBinder;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/IVideoToolBox$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public I5(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$VideoToolBoxBinder;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->r(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$VideoToolBoxBinder;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->r(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
