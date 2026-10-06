.class public final synthetic Lmiuix/flexible/template/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lmiuix/flexible/template/AbstractMarkTemplate;


# direct methods
.method public synthetic constructor <init>(Lmiuix/flexible/template/AbstractMarkTemplate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/flexible/template/a;->a:Lmiuix/flexible/template/AbstractMarkTemplate;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lmiuix/flexible/template/a;->a:Lmiuix/flexible/template/AbstractMarkTemplate;

    check-cast p1, Lkl/c;

    check-cast p2, Lkl/c;

    invoke-static {v0, p1, p2}, Lmiuix/flexible/template/AbstractMarkTemplate;->a(Lmiuix/flexible/template/AbstractMarkTemplate;Lkl/c;Lkl/c;)I

    move-result p1

    return p1
.end method
