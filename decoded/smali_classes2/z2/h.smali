.class public final synthetic Lz2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/miui/applicationlock/a;

.field public final synthetic b:I

.field public final synthetic c:Lc3/b;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/applicationlock/a;ILc3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/h;->a:Lcom/miui/applicationlock/a;

    iput p2, p0, Lz2/h;->b:I

    iput-object p3, p0, Lz2/h;->c:Lc3/b;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lz2/h;->a:Lcom/miui/applicationlock/a;

    iget v1, p0, Lz2/h;->b:I

    iget-object v2, p0, Lz2/h;->c:Lc3/b;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/applicationlock/a;->k(Lcom/miui/applicationlock/a;ILc3/b;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
