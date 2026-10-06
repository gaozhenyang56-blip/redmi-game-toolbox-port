.class public Lcom/miui/optimizemanage/optimizeresult/i;
.super Lcom/miui/optimizemanage/optimizeresult/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/optimizeresult/i$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/c;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->a:Ljava/util/List;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->b:Ljava/lang/String;

    const-string v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/i;->c:Z

    const p1, 0x7f0e00e1

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;->setLayoutId(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/optimizemanage/optimizeresult/c;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/d;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/i$a;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/i$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->c:Z

    return v0
.end method
