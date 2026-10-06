.class Lo/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/e;->f(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/e$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/e;


# direct methods
.method constructor <init>(Lo/e;)V
    .locals 0

    iput-object p1, p0, Lo/e$a;->a:Lo/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/e$c;Lo/e$c;)I
    .locals 0

    iget p1, p1, Lo/e$c;->a:I

    iget p2, p2, Lo/e$c;->a:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/e$c;

    check-cast p2, Lo/e$c;

    invoke-virtual {p0, p1, p2}, Lo/e$a;->a(Lo/e$c;Lo/e$c;)I

    move-result p1

    return p1
.end method
