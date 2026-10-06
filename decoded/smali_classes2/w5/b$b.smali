.class Lw5/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lw5/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw5/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw5/b;-><init>(Lw5/b$a;)V

    sput-object v0, Lw5/b$b;->a:Lw5/b;

    return-void
.end method
