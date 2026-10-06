.class Lqd/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqd/c;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqd/c;


# direct methods
.method constructor <init>(Lqd/c;)V
    .locals 0

    iput-object p1, p0, Lqd/c$a;->a:Lqd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/deepsave/IdeaModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lqd/c$a;->a:Lqd/c;

    invoke-static {v0, p1}, Lqd/c;->a(Lqd/c;Ljava/util/List;)V

    return-void
.end method
