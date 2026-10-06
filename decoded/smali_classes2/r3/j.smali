.class public final synthetic Lr3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lr3/o;

.field public final synthetic b:Lr3/o$g;


# direct methods
.method public synthetic constructor <init>(Lr3/o;Lr3/o$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/j;->a:Lr3/o;

    iput-object p2, p0, Lr3/j;->b:Lr3/o$g;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lr3/j;->a:Lr3/o;

    iget-object v1, p0, Lr3/j;->b:Lr3/o$g;

    invoke-static {v0, v1, p1, p2}, Lr3/o;->m(Lr3/o;Lr3/o$g;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
