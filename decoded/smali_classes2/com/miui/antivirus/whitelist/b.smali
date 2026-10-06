.class public Lcom/miui/antivirus/whitelist/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lx2/b;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/whitelist/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx2/b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/b;",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/whitelist/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/b;->a:Lx2/b;

    iput-object p2, p0, Lcom/miui/antivirus/whitelist/b;->b:Ljava/util/List;

    return-void
.end method
