.class Lg9/b$a;
.super Li9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg9/b;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lg9/b$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Li9/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object v0

    new-instance v1, Lg9/b$a$a;

    invoke-direct {v1, p0}, Lg9/b$a$a;-><init>(Lg9/b$a;)V

    invoke-virtual {v0, v1}, Li9/b;->D(Li9/a;)V

    return-void
.end method
