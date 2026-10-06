.class Lfe/d$a$a$a;
.super Lcom/miui/securitycenter/memory/IMemoryScanCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfe/d$a$a;->a([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfe/d$a$a;


# direct methods
.method constructor <init>(Lfe/d$a$a;)V
    .locals 0

    iput-object p1, p0, Lfe/d$a$a$a;->a:Lfe/d$a$a;

    invoke-direct {p0}, Lcom/miui/securitycenter/memory/IMemoryScanCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securitycenter/memory/MemoryModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lfe/d$a$a$a;->a:Lfe/d$a$a;

    iget-object v0, v0, Lfe/d$a$a;->b:Lfe/d$a;

    iget-object v0, v0, Lfe/d$a;->a:Lfe/d$c;

    invoke-interface {v0, p1}, Lfe/d$c;->a(Ljava/util/List;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
