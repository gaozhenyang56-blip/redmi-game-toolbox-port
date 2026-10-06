.class Lve/g$c;
.super Lcom/miui/gameturbo/active/IActiveCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve/g;->v(Lcom/miui/gamebooster/model/ActiveModel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lve/g;


# direct methods
.method constructor <init>(Lve/g;)V
    .locals 0

    iput-object p1, p0, Lve/g$c;->a:Lve/g;

    invoke-direct {p0}, Lcom/miui/gameturbo/active/IActiveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public R3(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadAppAfterGaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActiveWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lve/g$c;->a:Lve/g;

    invoke-static {v0}, Lve/g;->f(Lve/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/ActiveModel;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lve/g$c;->a:Lve/g;

    invoke-static {v0}, Lve/g;->g(Lve/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
