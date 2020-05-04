.class public Lcolor/support/v7/widget/SearchView;
.super Landroidx/appcompat/widget/ag;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/widget/SearchView$d;,
        Lcolor/support/v7/widget/SearchView$a;,
        Lcolor/support/v7/widget/SearchView$SearchAutoComplete;,
        Lcolor/support/v7/widget/SearchView$e;,
        Lcolor/support/v7/widget/SearchView$b;,
        Lcolor/support/v7/widget/SearchView$c;
    }
.end annotation


# static fields
.field static final l:Lcolor/support/v7/widget/SearchView$a;

.field private static final n:Z

.field private static final o:Z


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Z

.field private C:Landroidx/c/a/a;

.field private D:Z

.field private E:Ljava/lang/CharSequence;

.field private F:Z

.field private G:Z

.field private H:I

.field private I:Z

.field private J:Ljava/lang/CharSequence;

.field private K:Ljava/lang/CharSequence;

.field private L:I

.field private M:Landroid/os/Bundle;

.field private final N:Lcolor/support/v7/internal/widget/f;

.field private O:Ljava/lang/Runnable;

.field private final P:Ljava/lang/Runnable;

.field private Q:Ljava/lang/Runnable;

.field private final R:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final S:Landroid/view/View$OnClickListener;

.field private final T:Landroid/widget/TextView$OnEditorActionListener;

.field private final U:Landroid/widget/AdapterView$OnItemClickListener;

.field private final V:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private W:Landroid/text/TextWatcher;

.field public final a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

.field private aa:Z

.field private ab:Lcolor/support/v7/widget/SearchView$d;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/ImageView;

.field public h:Lcolor/support/v7/widget/SearchView$c;

.field public i:Z

.field public j:Z

.field public k:Landroid/app/SearchableInfo;

.field m:Landroid/view/View$OnKeyListener;

.field private final p:Landroid/view/View;

.field private final q:Landroid/view/View;

.field private final r:Landroid/widget/ImageView;

.field private final s:Landroid/graphics/drawable/Drawable;

.field private final t:I

.field private final u:I

.field private final v:Landroid/content/Intent;

.field private final w:Landroid/content/Intent;

.field private x:Lcolor/support/v7/widget/SearchView$b;

.field private y:Landroid/view/View$OnFocusChangeListener;

.field private z:Lcolor/support/v7/widget/SearchView$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcolor/support/v7/widget/SearchView;->n:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ne v0, v3, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v3, "Q"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    sput-boolean v1, Lcolor/support/v7/widget/SearchView;->o:Z

    new-instance v0, Lcolor/support/v7/widget/SearchView$a;

    invoke-direct {v0}, Lcolor/support/v7/widget/SearchView$a;-><init>()V

    sput-object v0, Lcolor/support/v7/widget/SearchView;->l:Lcolor/support/v7/widget/SearchView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/ag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcolor/support/v7/widget/SearchView$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$1;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->O:Ljava/lang/Runnable;

    new-instance v0, Lcolor/support/v7/widget/SearchView$5;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$5;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->P:Ljava/lang/Runnable;

    new-instance v0, Lcolor/support/v7/widget/SearchView$6;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$6;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->Q:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->R:Ljava/util/WeakHashMap;

    new-instance v0, Lcolor/support/v7/widget/SearchView$10;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$10;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->S:Landroid/view/View$OnClickListener;

    new-instance v0, Lcolor/support/v7/widget/SearchView$11;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$11;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->m:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcolor/support/v7/widget/SearchView$12;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$12;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->T:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcolor/support/v7/widget/SearchView$2;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$2;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->U:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcolor/support/v7/widget/SearchView$3;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$3;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->V:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcolor/support/v7/widget/SearchView$4;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/SearchView$4;-><init>(Lcolor/support/v7/widget/SearchView;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->W:Landroid/text/TextWatcher;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->aa:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcolor/support/v7/widget/SearchView;->ab:Lcolor/support/v7/widget/SearchView$d;

    sget-object v2, Lcolor/support/v7/appcompat/R$styleable;->SearchView:[I

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, p3, v3}, Landroidx/appcompat/widget/au;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/au;

    move-result-object p2

    invoke-static {p1}, Lcolor/support/v7/internal/widget/f;->a(Landroid/content/Context;)Lcolor/support/v7/internal/widget/f;

    move-result-object p3

    iput-object p3, p0, Lcolor/support/v7/widget/SearchView;->N:Lcolor/support/v7/internal/widget/f;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_layout:I

    sget v2, Lcolor/support/v7/appcompat/R$layout;->abc_search_view:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/au;->g(II)I

    move-result p3

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcolor/support/v7/appcompat/R$id;->search_src_text:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, p0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Lcolor/support/v7/widget/SearchView;)V

    sget p1, Lcolor/support/v7/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->p:Landroid/view/View;

    sget p1, Lcolor/support/v7/appcompat/R$id;->search_plate:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->b:Landroid/view/View;

    sget p1, Lcolor/support/v7/appcompat/R$id;->submit_area:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->c:Landroid/view/View;

    sget p1, Lcolor/support/v7/appcompat/R$id;->search_button:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    sget p1, Lcolor/support/v7/appcompat/R$id;->search_go_btn:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->e:Landroid/widget/ImageView;

    sget p1, Lcolor/support/v7/appcompat/R$id;->search_close_btn:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->f:Landroid/widget/ImageView;

    sget p1, Lcolor/support/v7/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    sget p1, Lcolor/support/v7/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->r:Landroid/widget/ImageView;

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->b:Landroid/view/View;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_queryBackground:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->c:Landroid/view/View;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_submitBackground:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->e:Landroid/widget/ImageView;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->f:Landroid/widget/ImageView;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->r:Landroid/widget/ImageView;

    sget p3, Lcolor/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_searchHintIcon:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/au;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->s:Landroid/graphics/drawable/Drawable;

    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    sget p3, Lcolor/support/v7/appcompat/R$layout;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/au;->g(II)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/SearchView;->t:I

    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_commitIcon:I

    invoke-virtual {p2, p1, v3}, Landroidx/appcompat/widget/au;->g(II)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/widget/SearchView;->u:I

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->f:Landroid/widget/ImageView;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->e:Landroid/widget/ImageView;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->W:Landroid/text/TextWatcher;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->T:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->U:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->V:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Lcolor/support/v7/widget/SearchView;->m:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance p3, Lcolor/support/v7/widget/SearchView$7;

    invoke-direct {p3, p0}, Lcolor/support/v7/widget/SearchView$7;-><init>(Lcolor/support/v7/widget/SearchView;)V

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/au;->a(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/au;->e(II)I

    move-result p1

    if-eq p1, p3, :cond_0

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setMaxWidth(I)V

    :cond_0
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/au;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_1
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_android_imeOptions:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/au;->a(II)I

    move-result p1

    if-eq p1, p3, :cond_2

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setImeOptions(I)V

    :cond_2
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_android_inputType:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/au;->a(II)I

    move-result p1

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setInputType(I)V

    :cond_3
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->SearchView_android_focusable:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/au;->a(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setFocusable(Z)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/au;->b()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.speech.action.WEB_SEARCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->v:Landroid/content/Intent;

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->v:Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->v:Landroid/content/Intent;

    const-string p3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v0, "web_search"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->w:Landroid/content/Intent;

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->w:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->q:Landroid/view/View;

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->q:Landroid/view/View;

    if-eqz p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_4

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->l()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->m()V

    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->i:Z

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->a(Z)V

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->r()V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "calling_package"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "suggest_intent_action"

    invoke-static {p1, v1}, Lcolor/support/v7/widget/f;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SEARCH"

    :cond_1
    move-object v2, v1

    const-string v1, "suggest_intent_data"

    invoke-static {p1, v1}, Lcolor/support/v7/widget/f;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcolor/support/v7/widget/SearchView;->n:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "suggest_intent_data_id"

    invoke-static {p1, v3}, Lcolor/support/v7/widget/f;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    move-object v3, v0

    goto :goto_0

    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    :goto_0
    const-string v1, "suggest_intent_query"

    invoke-static {p1, v1}, Lcolor/support/v7/widget/f;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "suggest_intent_extra_data"

    invoke-static {p1, v1}, Lcolor/support/v7/widget/f;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcolor/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, -0x1

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search suggestions cursor at row "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned exception."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SearchView"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->K:Ljava/lang/CharSequence;

    const-string p2, "user_query"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p1, "query"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "intent_extra_data_key"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->M:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string p2, "app_data"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "action_key"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_msg"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    sget-boolean p1, Lcolor/support/v7/widget/SearchView;->n:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_5
    return-object v0
.end method

.method static synthetic a(Lcolor/support/v7/widget/SearchView;)Landroidx/c/a/a;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SearchView"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 6

    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->B:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iget-object v5, p0, Lcolor/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcolor/support/v7/widget/SearchView;->b(Z)V

    iget-object v2, p0, Lcolor/support/v7/widget/SearchView;->p:Landroid/view/View;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->b()V

    if-nez v3, :cond_2

    move v0, v4

    :cond_2
    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->c(Z)V

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->p()V

    return-void
.end method

.method private a(I)Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->z:Lcolor/support/v7/widget/SearchView$e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcolor/support/v7/widget/SearchView$e;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->e(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private a(IILjava/lang/String;)Z
    .locals 0

    iget-object p2, p0, Lcolor/support/v7/widget/SearchView;->z:Lcolor/support/v7/widget/SearchView$e;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcolor/support/v7/widget/SearchView$e;->b(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    :goto_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcolor/support/v7/widget/SearchView;->b(IILjava/lang/String;)Z

    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->e()V

    const/4 p1, 0x1

    return p1
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    invoke-static {p3}, Lcolor/support/a/a/c;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x42

    if-eq p2, p1, :cond_6

    const/16 p1, 0x54

    if-eq p2, p1, :cond_6

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0x15

    if-eq p2, p1, :cond_4

    const/16 p3, 0x16

    if-ne p2, p3, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x13

    if-ne p2, p1, :cond_7

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_4
    :goto_0
    if-ne p2, p1, :cond_5

    move p1, v0

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result p1

    :goto_1
    iget-object p2, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    sget-object p1, Lcolor/support/v7/widget/SearchView;->l:Lcolor/support/v7/widget/SearchView$a;

    iget-object p2, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcolor/support/v7/widget/SearchView$a;->a(Landroid/widget/AutoCompleteTextView;Z)V

    return p3

    :cond_6
    :goto_2
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcolor/support/v7/widget/SearchView;->a(IILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method static synthetic a(Lcolor/support/v7/widget/SearchView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->a(I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcolor/support/v7/widget/SearchView;IILjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcolor/support/v7/widget/SearchView;->a(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcolor/support/v7/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcolor/support/v7/widget/SearchView;->a(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcolor/support/v7/widget/SearchView;->M:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v4, "app_data"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p1, "free_form"

    const/4 v4, 0x1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-lt v5, v6, :cond_4

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v7

    :goto_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v7

    :goto_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v4

    goto :goto_2

    :cond_4
    move-object v5, v7

    move-object v6, v5

    :cond_5
    :goto_2
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.PROMPT"

    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.LANGUAGE"

    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string p1, "calling_package"

    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v3
.end method

.method static synthetic b(Lcolor/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/SearchView;->y:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->D:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->I:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private b(IILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    invoke-virtual {v0}, Landroidx/c/a/a;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, p2, p3}, Lcolor/support/v7/widget/SearchView;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->a(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcolor/support/v7/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->t()V

    return-void
.end method

.method private c(Z)V
    .locals 2

    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->I:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcolor/support/v7/widget/SearchView;)Lcolor/support/v7/widget/SearchView$d;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/SearchView;->ab:Lcolor/support/v7/widget/SearchView$d;

    return-object p0
.end method

.method private e(I)V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    invoke-virtual {v1}, Landroidx/c/a/a;->a()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    invoke-virtual {p1, v1}, Landroidx/c/a/a;->b(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private getPreferredWidth()I
    .locals 2

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->support_abc_search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private l()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->q:Landroid/view/View;

    new-instance v1, Lcolor/support/v7/widget/SearchView$8;

    invoke-direct {v1, p0}, Lcolor/support/v7/widget/SearchView$8;-><init>(Lcolor/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcolor/support/v7/widget/SearchView$9;

    invoke-direct {v1, p0}, Lcolor/support/v7/widget/SearchView$9;-><init>(Lcolor/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private n()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v2, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->v:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->w:Landroid/content/Intent;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->I:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p()V
    .locals 2

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->E:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcolor/support/v7/widget/SearchView;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private s()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, -0x10001

    and-int/2addr v0, v1

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/c/a/a;->a(Landroid/database/Cursor;)V

    :cond_1
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcolor/support/v7/widget/f;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    iget-object v4, p0, Lcolor/support/v7/widget/SearchView;->R:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v3, v4}, Lcolor/support/v7/widget/f;-><init>(Landroid/content/Context;Lcolor/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    check-cast v0, Lcolor/support/v7/widget/f;

    iget-boolean v1, p0, Lcolor/support/v7/widget/SearchView;->F:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/f;->a(I)V

    :cond_3
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void
.end method

.method private t()V
    .locals 6

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0}, Landroidx/appcompat/widget/ba;->a(Landroid/view/View;)Z

    move-result v3

    iget-boolean v4, p0, Lcolor/support/v7/widget/SearchView;->i:Z

    if-eqz v4, :cond_0

    sget v4, Lcolor/support/v7/appcompat/R$dimen;->support_abc_dropdownitem_icon_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcolor/support/v7/appcompat/R$dimen;->support_abc_dropdownitem_text_padding_left:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v3, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_1

    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    sub-int v0, v1, v0

    :goto_1
    iget-object v3, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v1, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcolor/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->K:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->d()V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->B:Z

    return v0
.end method

.method public b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcolor/support/v7/widget/SearchView;->i:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcolor/support/v7/widget/SearchView;->j:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    iget-object v3, p0, Lcolor/support/v7/widget/SearchView;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    sget-object v0, Lcolor/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v0, Lcolor/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    sget-object v0, Lcolor/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcolor/support/v7/widget/SearchView;->ENABLED_FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcolor/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_2
    sget-object v0, Lcolor/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_0
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->invalidate()V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/v7/widget/SearchView;->K:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->b(Z)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcolor/support/v7/widget/SearchView;->c(Z)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->b()V

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->p()V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->h:Lcolor/support/v7/widget/SearchView$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->J:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->h:Lcolor/support/v7/widget/SearchView$c;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcolor/support/v7/widget/SearchView$c;->b(Ljava/lang/String;)Z

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->J:Ljava/lang/CharSequence;

    return-void
.end method

.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->G:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    invoke-super {p0}, Landroidx/appcompat/widget/ag;->clearFocus()V

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    iput-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->G:Z

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->h:Lcolor/support/v7/widget/SearchView$c;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcolor/support/v7/widget/SearchView$c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcolor/support/v7/widget/SearchView;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->e()V

    :cond_2
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->x:Lcolor/support/v7/widget/SearchView$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcolor/support/v7/widget/SearchView$b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->clearFocus()V

    invoke-direct {p0, v1}, Lcolor/support/v7/widget/SearchView;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->a(Z)V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->setImeVisibility(Z)V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->A:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/SearchView;->H:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->E:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-boolean v0, Lcolor/support/v7/widget/SearchView;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/SearchView;->u:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    iget v0, p0, Lcolor/support/v7/widget/SearchView;->t:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroidx/c/a/a;
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    return-object v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->v:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcolor/support/v7/widget/SearchView;->a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->w:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcolor/support/v7/widget/SearchView;->b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SearchView"

    const-string v1, "Could not find voice search activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method i()V
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/SearchView;->a(Z)V

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->q()V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->k()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    sget-boolean v0, Lcolor/support/v7/widget/SearchView;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->refreshAutoCompleteResults()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcolor/support/v7/widget/SearchView;->l:Lcolor/support/v7/widget/SearchView$a;

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$a;->a(Landroid/widget/AutoCompleteTextView;)V

    sget-object v0, Lcolor/support/v7/widget/SearchView;->l:Lcolor/support/v7/widget/SearchView$a;

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$a;->b(Landroid/widget/AutoCompleteTextView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcolor/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->clearFocus()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcolor/support/v7/widget/SearchView;->a(Z)V

    iget-object v1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Lcolor/support/v7/widget/SearchView;->L:I

    invoke-virtual {v1, v2}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iput-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->j:Z

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->j:Z

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Lcolor/support/v7/widget/SearchView;->L:I

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Lcolor/support/v7/widget/SearchView;->L:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->Q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroidx/appcompat/widget/ag;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ag;->onMeasure(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcolor/support/v7/widget/SearchView;->H:I

    if-lez v0, :cond_6

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcolor/support/v7/widget/SearchView;->H:I

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result p1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcolor/support/v7/widget/SearchView;->H:I

    if-lez v0, :cond_5

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_6
    :goto_0
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ag;->onMeasure(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/ag;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->q()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->G:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lcolor/support/v7/widget/SearchView;->a(Z)V

    :cond_2
    return p1

    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ag;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->M:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->g()V

    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/SearchView;->i:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->i:Z

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->a(Z)V

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->r()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    return-void
.end method

.method public setImeVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/SearchView;->H:I

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Lcolor/support/v7/widget/SearchView$b;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->x:Lcolor/support/v7/widget/SearchView$b;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->y:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Lcolor/support/v7/widget/SearchView$c;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->h:Lcolor/support/v7/widget/SearchView$c;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->A:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSearchViewClickListener(Lcolor/support/v7/widget/SearchView$d;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->ab:Lcolor/support/v7/widget/SearchView$d;

    return-void
.end method

.method public setOnSuggestionListener(Lcolor/support/v7/widget/SearchView$e;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->z:Lcolor/support/v7/widget/SearchView$e;

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->E:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->r()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->F:Z

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    instance-of v1, v0, Lcolor/support/v7/widget/f;

    if-eqz v1, :cond_1

    check-cast v0, Lcolor/support/v7/widget/f;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/f;->a(I)V

    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->k:Landroid/app/SearchableInfo;

    if-eqz p1, :cond_1

    sget-boolean p1, Lcolor/support/v7/widget/SearchView;->n:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->s()V

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->r()V

    :cond_1
    sget-boolean p1, Lcolor/support/v7/widget/SearchView;->n:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcolor/support/v7/widget/SearchView;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->I:Z

    iget-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->I:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v0, "nm"

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->a()Z

    move-result p1

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->a(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/SearchView;->D:Z

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->a()Z

    move-result p1

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/SearchView;->a(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroidx/c/a/a;)V
    .locals 1

    iput-object p1, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    iget-object p1, p0, Lcolor/support/v7/widget/SearchView;->a:Lcolor/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v0, p0, Lcolor/support/v7/widget/SearchView;->C:Landroidx/c/a/a;

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
