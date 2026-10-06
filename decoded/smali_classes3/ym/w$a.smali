.class Lym/w$a;
.super Lin/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lym/w;-><init>(Lym/u;Lym/x;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lym/w;


# direct methods
.method constructor <init>(Lym/w;)V
    .locals 0

    iput-object p1, p0, Lym/w$a;->k:Lym/w;

    invoke-direct {p0}, Lin/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected t()V
    .locals 1

    iget-object v0, p0, Lym/w$a;->k:Lym/w;

    invoke-virtual {v0}, Lym/w;->b()V

    return-void
.end method
