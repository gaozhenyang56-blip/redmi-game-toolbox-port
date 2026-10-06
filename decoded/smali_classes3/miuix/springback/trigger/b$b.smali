.class Lmiuix/springback/trigger/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/springback/view/SpringBackLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/springback/trigger/b;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/b;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b$b;->a:Lmiuix/springback/trigger/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/b$b;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->j(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/d;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/springback/trigger/d;->c()Z

    move-result v0

    return v0
.end method
